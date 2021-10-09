package com.javaex.vo;

public class AppFilterVo {
	//필드
		private int user_no;
		private int stage_no;
		private String start_date;
		private String end_date;

		
		
		//생성자
		public AppFilterVo() {
			super();
		}
		
		public AppFilterVo(int user_no, int stage_no, String start_date, String end_date) {
			super();
			this.user_no = user_no;
			this.stage_no = stage_no;
			this.start_date = start_date;
			this.end_date = end_date;
		}
		
		//메소드 g-s
		public int getUser_no() {
			return user_no;
		}

		public void setUser_no(int user_no) {
			this.user_no = user_no;
		}

		public int getStage_no() {
			return stage_no;
		}

		public void setStage_no(int stage_no) {
			this.stage_no = stage_no;
		}

		public String getStart_date() {
			return start_date;
		}

		public void setStart_date(String start_date) {
			this.start_date = start_date;
		}

		public String getEnd_date() {
			return end_date;
		}

		public void setEnd_date(String end_date) {
			this.end_date = end_date;
		}
		
		//메소드
		@Override
		public String toString() {
			return "AppFilterVo [user_no=" + user_no + ", stage_no=" + stage_no + ", start_date=" + start_date
					+ ", end_date=" + end_date + "]";
		}
}
